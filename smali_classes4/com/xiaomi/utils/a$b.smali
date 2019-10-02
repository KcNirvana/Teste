.class Lcom/xiaomi/utils/a$b;
.super Ljava/lang/Object;
.source "AdsBlocker.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/utils/a;


# direct methods
.method private constructor <init>(Lcom/xiaomi/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/a$b;->a:Lcom/xiaomi/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/utils/a;Lcom/xiaomi/utils/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/utils/a$b;-><init>(Lcom/xiaomi/utils/a;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "MiAdBlacklistConfig"

    const-string p2, "AdSdkBlocker update"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/utils/a$b;->a:Lcom/xiaomi/utils/a;

    invoke-static {p1}, Lcom/xiaomi/utils/a;->b(Lcom/xiaomi/utils/a;)V

    return-void
.end method
