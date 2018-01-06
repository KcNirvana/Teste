.class final Lcom/amap/api/col/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/gc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ge;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/ge;->b:Lcom/amap/api/col/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ge;->a:Landroid/content/Context;

    sget-object v1, Lcom/amap/api/col/dl;->g:Ljava/lang/String;

    const v2, 0x4b000

    iget-object v3, p0, Lcom/amap/api/col/ge;->b:Lcom/amap/api/col/gc;

    invoke-virtual {v3}, Lcom/amap/api/col/gc;->a()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/gg;->a(Landroid/content/Context;Ljava/lang/String;I[B)V

    return-void
.end method
