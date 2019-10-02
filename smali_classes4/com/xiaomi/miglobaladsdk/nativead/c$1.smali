.class Lcom/xiaomi/miglobaladsdk/nativead/c$1;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-out_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-static {p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/nativead/c;Ljava/util/List;)V

    return-void
.end method
