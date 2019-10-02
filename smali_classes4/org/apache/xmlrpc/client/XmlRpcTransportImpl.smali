.class public abstract Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcTransport;


# instance fields
.field private final client:Lorg/apache/xmlrpc/client/XmlRpcClient;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-void
.end method


# virtual methods
.method public getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method
