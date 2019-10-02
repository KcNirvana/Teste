.class public Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;
.super Lorg/apache/xmlrpc/XmlRpcConfigImpl;

# interfaces
.implements Lorg/apache/xmlrpc/server/XmlRpcServerConfig;
.implements Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;


# instance fields
.field private isEnabledForExceptions:Z

.field private isKeepAliveEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/XmlRpcConfigImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabledForExceptions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isEnabledForExceptions:Z

    return v0
.end method

.method public isKeepAliveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isKeepAliveEnabled:Z

    return v0
.end method

.method public setEnabledForExceptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isEnabledForExceptions:Z

    return-void
.end method

.method public setKeepAliveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;->isKeepAliveEnabled:Z

    return-void
.end method
