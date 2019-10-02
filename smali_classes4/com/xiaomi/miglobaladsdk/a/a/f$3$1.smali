.class Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Lcom/xiaomi/utils/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/a/a/f$3;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f$3;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/a/f$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/xiaomi/miglobaladsdk/a;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/a/f$3;

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/a/f$3;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/util/HashMap;Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$3$1;->a:Lcom/xiaomi/miglobaladsdk/a/a/f$3;

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/a/f$3;->a:Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-static {p3, p4}, Lcom/xiaomi/utils/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V

    return-void
.end method
