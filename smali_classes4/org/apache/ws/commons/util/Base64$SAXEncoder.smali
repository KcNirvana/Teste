.class public Lorg/apache/ws/commons/util/Base64$SAXEncoder;
.super Lorg/apache/ws/commons/util/Base64$Encoder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAXEncoder"
.end annotation


# instance fields
.field private final handler:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;-><init>([CILjava/lang/String;)V

    iput-object p4, p0, Lorg/apache/ws/commons/util/Base64$SAXEncoder;->handler:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method protected writeBuffer([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$SAXEncoder;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/ws/commons/util/Base64$SAXIOException;

    invoke-direct {p2, p1}, Lorg/apache/ws/commons/util/Base64$SAXIOException;-><init>(Lorg/xml/sax/SAXException;)V

    throw p2
.end method
