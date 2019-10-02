.class public Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;


# instance fields
.field private httpClient:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    return-object v0
.end method

.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;)V

    return-object v0
.end method

.method public setHttpClient(Lorg/apache/commons/httpclient/HttpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    return-void
.end method
