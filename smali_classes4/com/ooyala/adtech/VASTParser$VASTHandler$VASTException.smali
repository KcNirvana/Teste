.class public Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;
.super Lorg/xml/sax/SAXException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/VASTParser$VASTHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VASTException"
.end annotation


# instance fields
.field public adtechException:Lcom/ooyala/adtech/a;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/a;

    invoke-direct {v0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler$VASTException;->adtechException:Lcom/ooyala/adtech/a;

    return-void
.end method
