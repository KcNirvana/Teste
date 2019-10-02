.class public abstract Lorg/apache/xmlrpc/XmlRpcConfigImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcConfig;
.implements Lorg/apache/xmlrpc/common/XmlRpcHttpConfig;


# instance fields
.field private basicEncoding:Ljava/lang/String;

.field private contentLengthOptional:Z

.field private enabledForExtensions:Z

.field private encoding:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public getBasicEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->basicEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public isContentLengthOptional()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->contentLengthOptional:Z

    return v0
.end method

.method public isEnabledForExtensions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->enabledForExtensions:Z

    return v0
.end method

.method public setBasicEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->basicEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLengthOptional(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->contentLengthOptional:Z

    return-void
.end method

.method public setEnabledForExtensions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->enabledForExtensions:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/XmlRpcConfigImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method
