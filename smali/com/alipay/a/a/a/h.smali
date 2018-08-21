.class Lcom/alipay/a/a/a/h;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lcom/alipay/a/a/a/b;


# instance fields
.field final synthetic a:Lcom/alipay/a/a/a/g;


# direct methods
.method constructor <init>(Lcom/alipay/a/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/a/a/a/h;->a:Lcom/alipay/a/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
