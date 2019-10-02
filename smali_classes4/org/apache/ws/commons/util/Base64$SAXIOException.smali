.class public Lorg/apache/ws/commons/util/Base64$SAXIOException;
.super Ljava/io/IOException;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAXIOException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37353237313537L


# instance fields
.field final saxException:Lorg/xml/sax/SAXException;


# direct methods
.method constructor <init>(Lorg/xml/sax/SAXException;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$SAXIOException;->saxException:Lorg/xml/sax/SAXException;

    return-void
.end method


# virtual methods
.method public getSAXException()Lorg/xml/sax/SAXException;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$SAXIOException;->saxException:Lorg/xml/sax/SAXException;

    return-object v0
.end method
