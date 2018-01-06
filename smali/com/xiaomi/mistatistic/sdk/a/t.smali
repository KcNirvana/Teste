.class Lcom/xiaomi/mistatistic/sdk/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/t;->a:Lcom/xiaomi/mistatistic/sdk/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/b/b;)Lcom/xiaomi/mistatistic/sdk/b/b;
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->a(Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
