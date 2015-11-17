package com.yangnormal.sstackex.ws;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;



@WebService
@SOAPBinding(style = Style.RPC)
public interface WebServiceInterface {
    @WebMethod
    int register(String name, String email, String password);
    @WebMethod
    void postQuestion(int uid, String token, String title, String email, String content);
    @WebMethod
    void postAnswer(int qid, int uid, String token, String email, String content);
    @WebMethod
    void deleteQuestion(int qid, String token);
    @WebMethod
    String[] getQuestion(int qid);
    @WebMethod
    String[][] getQuestionList();
    @WebMethod
    String[][] getAnswerList(int qid);
    @WebMethod
    void vote(int type, int id, int direction, int uid);
}
