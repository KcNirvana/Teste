.class public Lorg/apache/xmlrpc/webserver/RequestData;
.super Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;


# instance fields
.field private final connection:Lorg/apache/xmlrpc/webserver/Connection;

.field private contentLength:I

.field private httpVersion:Ljava/lang/String;

.field private keepAlive:Z

.field private method:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/webserver/Connection;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->connection:Lorg/apache/xmlrpc/webserver/Connection;

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/apache/xmlrpc/webserver/Connection;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->connection:Lorg/apache/xmlrpc/webserver/Connection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    return v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->method:Ljava/lang/String;

    return-object v0
.end method

.method public isByteArrayRequired()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/RequestData;->isContentLengthOptional()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->keepAlive:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/RequestData;->success:Z

    return v0
.end method

.method public setContentLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->contentLength:I

    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->httpVersion:Ljava/lang/String;

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->keepAlive:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->method:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/RequestData;->success:Z

    return-void
.end method
