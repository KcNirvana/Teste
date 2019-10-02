.class public Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;
.super Lorg/apache/xmlrpc/XmlRpcException;


# static fields
.field private static final serialVersionUID:J = -0x603a7dc74adfe16bL


# instance fields
.field private final status:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP server returned unexpected status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->status:I

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->statusMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->status:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method
