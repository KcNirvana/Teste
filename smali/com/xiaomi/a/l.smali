.class public Lcom/xiaomi/a/l;
.super Lcom/xiaomi/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/xiaomi/a/l;
    .locals 1

    const-string v0, "_category_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/a/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/a/l;
    .locals 1

    const-string v0, "_action_"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/a/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
