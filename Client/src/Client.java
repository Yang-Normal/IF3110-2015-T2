import com.yangnormal.sstackex.ws.WebServiceImplService;
import com.yangnormal.sstackex.ws.WebServiceInterface;
import java.util.Arrays;
import java.util.ArrayList;

public class Client{
    public static void main(String[] args) {
        WebServiceImplService webService = new WebServiceImplService();
        WebServiceInterface wsi = webService.getWebServiceImplPort();
        for (int i=0;i<wsi.getQuestionList().getItem().size();i++){
            System.out.println(wsi.getQuestionList().getItem().get(i).getItem().toString());
        }
        System.out.println(wsi.printMessage());
    }

}