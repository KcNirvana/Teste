.class public Lcom/xiaomi/push/fm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/fr;

.field private a:Lcom/xiaomi/push/fz;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/fr;Lcom/xiaomi/push/fz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fr;

    iput-object p2, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fz;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ff;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fr;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/fr;->a(Lcom/xiaomi/push/ff;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/gd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fz;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/fz;->a(Lcom/xiaomi/push/gd;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/fm$a;->a:Lcom/xiaomi/push/fr;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/fr;->a(Lcom/xiaomi/push/gd;)V

    :cond_1
    return-void
.end method
