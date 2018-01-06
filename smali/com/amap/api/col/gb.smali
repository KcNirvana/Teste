.class Lcom/amap/api/col/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/col/ga;


# direct methods
.method constructor <init>(Lcom/amap/api/col/ga;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/gb;->a:Lcom/amap/api/col/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gb;->a:Lcom/amap/api/col/ga;

    invoke-static {v0}, Lcom/amap/api/col/ga;->a(Lcom/amap/api/col/ga;)V

    return-void
.end method
