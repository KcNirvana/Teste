.class public Lorg/apache/xmlrpc/util/XmlRpcIOException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = -0x6aec9b8ea65137dfL


# instance fields
.field private final linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/util/XmlRpcIOException;->linkedException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getLinkedException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/util/XmlRpcIOException;->linkedException:Ljava/lang/Throwable;

    return-object v0
.end method
