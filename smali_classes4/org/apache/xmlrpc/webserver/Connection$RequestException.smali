.class abstract Lorg/apache/xmlrpc/webserver/Connection$RequestException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d557ce49e300efdL


# instance fields
.field private final requestData:Lorg/apache/xmlrpc/webserver/RequestData;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/webserver/Connection$RequestException;)Lorg/apache/xmlrpc/webserver/RequestData;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object p0
.end method


# virtual methods
.method getRequestData()Lorg/apache/xmlrpc/webserver/RequestData;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object v0
.end method
