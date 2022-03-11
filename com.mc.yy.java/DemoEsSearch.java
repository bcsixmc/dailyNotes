package cn.udinghuo.thirdparty.goods.controller;

import cn.udinghuo.core.exception.BizException;
import cn.udinghuo.thirdparty.goods.tpi.UpcProductContentApiService;
import cn.udinghuo.utils.PropertyReader;
import cn.udinghuo.web.passport.yxy.service.YxyService;
import com.1.cloud.search.ResponseUtils;
import com.1.cloud.search.SearchException;
import net.sf.json.JSONObject;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.collections.CollectionUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicHeader;
import org.apache.http.util.EntityUtils;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.SearchHit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @date 2020/5/15 11:38
 **/
public class DemoEsSearch {

    private static final String esLog = "es查询";
    private static String indexName = PropertyReader.getInstance().getProperty("tpi.product.index.name", "skucontent");

    @Value("${esToken}")
    private static String esToken = PropertyReader.getInstance().getProperty("tpi.product.es.token", "7Kau4Cf0L/xKjWU77zG3QX9nmEQ=");
    @Autowired
    private static UpcProductContentApiService upcProductContentApiService;
    @Autowired
    private YxyService yxyService;

    public static void main(String[] args) {
        //目前 es 最大支持返回1w 条，如果不加 limit 默认返回200 条。
//        String searchKeyWordSql= "select id from skucontent_ml where tenant_yxytenantid = 'e389781f8ddf4d229b2eb3c5cc18dc87' and keyWords =term('亿力') limit 0,9999";
        StringBuilder searchKeyWordSql = new StringBuilder();
        searchKeyWordSql.append("select id from ")
                .append(indexName)
                .append(" where keyWords =term('亿力')")

                .append("limit 0,9999");
/*        searchKeyWordSql.append("select id from ")
                .append(indexName)
                .append(" where tenant_yxytenantid = '")
                .append("e389781f8ddf4d229b2eb3c5cc18dc87")
                .append("'")
                .append("and keyWords =term('锂之星无刷锂电扳手')")
                .append("limit 0,9999");*/
        try {
            String requestUrl = "https://intellis.diwork.com/opensearch/search/sql?app=customer";
            CloseableHttpClient client = HttpClients.createDefault();
            HttpPost httpPost = new HttpPost(requestUrl);
            httpPost.addHeader(new BasicHeader("X-DP-TOKEN", "wAv1wox8SWw72lrRgLknILmc/ho="));
            httpPost.setEntity(new StringEntity(new Base64().encodeToString(searchKeyWordSql.toString().getBytes("UTF-8"))));
            CloseableHttpResponse response = client.execute(httpPost);

            String result = EntityUtils.toString(response.getEntity(), "UTF-8");
            JSONObject detailMsg = JSONObject.fromObject(result).getJSONObject("detailMsg");
            SearchResponse searchResponse = ResponseUtils.toResponse(detailMsg.getString("data"));
            Long totalHits = searchResponse.getHits().totalHits();

            List<String> resList = new ArrayList<>();
            System.out.println(searchResponse.toString());

            for (SearchHit hit : searchResponse.getHits()) {

                resList.add(hit.sourceAsString());
            }
            client.close();
            System.out.println("resList 长度++++++++++++++++++++++++++++++++++++++++++++" + resList.size());
            List productIds = new ArrayList();
            if (!CollectionUtils.isEmpty(resList)) {
                productIds = resList.parallelStream().map(e -> {
                    JSONObject json = JSONObject.fromObject(e);
                    return json.getLong("id");
                }).distinct().collect(Collectors.toList());
            }
            System.out.println("productIds  +++++++++++++++++++++++++++++++++++" + productIds.toString());
            System.out.println("arrays size +++++++++++++++++++++++++++++++++++" + productIds.toArray().length);

        } catch (SearchException e) {
            throw new BizException(esLog + "失败!!!!" + e.getMessage());
        } catch (UnsupportedEncodingException e1) {
            throw new BizException(esLog + "编码失败：" + searchKeyWordSql);
        } catch (Exception ex) {
            throw new BizException(esLog + "编码失败：" + ex.getMessage());
        }
    }
}
