.class Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/WebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressMatcher"
.end annotation


# instance fields
.field private final pattern:[I

.field final synthetic this$0:Lorg/apache/xmlrpc/webserver/WebServer;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->this$0:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    :try_start_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    const/16 v3, 0x100

    aput v3, v2, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    aput v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" does not represent a valid IP address"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method matches([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    aget v2, v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    aget v2, v2, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
