.class Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;
.super Lorg/apache/xmlrpc/webserver/Connection$RequestException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadRequestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d36343432373436L


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    return-void
.end method
