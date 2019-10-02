.class public Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;
.super Lorg/apache/xmlrpc/XmlRpcConfigImpl;

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfig;


# instance fields
.field private basicPassword:Ljava/lang/String;

.field private basicUserName:Ljava/lang/String;

.field private connectionTimeout:I

.field private enabledForExceptions:Z

.field private gzipCompressing:Z

.field private gzipRequesting:Z

.field private replyTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/XmlRpcConfigImpl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    return-void
.end method


# virtual methods
.method public getBasicPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    return v0
.end method

.method public getReplyTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    return v0
.end method

.method public isEnabledForExceptions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->enabledForExceptions:Z

    return v0
.end method

.method public isGzipCompressing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipCompressing:Z

    return v0
.end method

.method public isGzipRequesting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipRequesting:Z

    return v0
.end method

.method public setBasicPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicPassword:Ljava/lang/String;

    return-void
.end method

.method public setBasicUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->basicUserName:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->connectionTimeout:I

    return-void
.end method

.method public setEnabledForExceptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->enabledForExceptions:Z

    return-void
.end method

.method public setGzipCompressing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipCompressing:Z

    return-void
.end method

.method public setGzipRequesting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->gzipRequesting:Z

    return-void
.end method

.method public setReplyTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->replyTimeout:I

    return-void
.end method
