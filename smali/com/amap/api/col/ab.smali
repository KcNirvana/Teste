.class public Lcom/amap/api/col/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/a/d;


# instance fields
.field private a:Lcom/amap/api/a/a;

.field private b:Lcom/amap/api/maps2d/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-nez v0, :cond_2

    sget-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/ab;->b()V

    new-instance v0, Lcom/amap/api/col/hw;

    sget-object v1, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/hw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/amap/api/maps2d/c;->CREATOR:Lcom/amap/api/maps2d/d;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/d;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ab;->b(Lcom/amap/api/maps2d/c;)V

    const-string v0, "MapFragmentDelegateImp"

    const-string v1, "onCreateView"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bx;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-interface {v0}, Lcom/amap/api/a/a;->g()Landroid/view/View;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Lcom/amap/api/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/ab;->b()V

    new-instance v0, Lcom/amap/api/col/hw;

    sget-object v1, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/hw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/c;

    invoke-direct {v0}, Lcom/amap/api/maps2d/c;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    invoke-virtual {p0}, Lcom/amap/api/col/ab;->a()Lcom/amap/api/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/a/a;->i()Lcom/amap/api/maps2d/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/c;->a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/maps2d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    if-eqz p1, :cond_1

    const-string v0, "MapOptions"

    iget-object v1, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ab;->b:Lcom/amap/api/maps2d/c;

    return-void
.end method

.method b()V
    .locals 6

    const/16 v5, 0x1e0

    const/16 v4, 0x140

    const/16 v3, 0x12

    const v2, 0x3f19999a    # 0.6f

    sget-object v0, Lcom/amap/api/col/it;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/amap/api/col/it;->m:I

    if-le v0, v4, :cond_2

    if-gt v0, v5, :cond_1

    const/16 v1, 0x180

    sput v1, Lcom/amap/api/col/it;->k:I

    :goto_0
    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/col/it;->b:F

    :goto_1
    sget v0, Lcom/amap/api/col/it;->b:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {v3}, Lcom/amap/api/col/it;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x200

    sput v1, Lcom/amap/api/col/it;->k:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x100

    sput v1, Lcom/amap/api/col/it;->k:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_4

    sput v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v3}, Lcom/amap/api/col/it;->a(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_5

    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/col/it;->b:F

    goto :goto_1

    :cond_5
    if-gt v0, v4, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/col/it;->b:F

    goto :goto_1

    :cond_6
    if-gt v0, v5, :cond_7

    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/col/it;->b:F

    goto :goto_1

    :cond_7
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/col/it;->b:F

    goto :goto_1
.end method

.method b(Lcom/amap/api/maps2d/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->d()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    new-instance v2, Lcom/amap/api/maps2d/f;

    iget-object v3, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget v4, v0, Lcom/amap/api/maps2d/a/c;->b:F

    iget v5, v0, Lcom/amap/api/maps2d/a/c;->d:F

    iget v0, v0, Lcom/amap/api/maps2d/a/c;->c:F

    invoke-static {v3, v4, v5, v0}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/h;FFF)Lcom/amap/api/col/in;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/f;-><init>(Lcom/amap/api/a/k;)V

    invoke-interface {v1, v2}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/f;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-interface {v0}, Lcom/amap/api/a/a;->L()Lcom/amap/api/maps2d/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->h()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->d(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->b(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->e(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->c(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/a;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/c;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/a/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-interface {v0}, Lcom/amap/api/a/a;->u()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ab;->a:Lcom/amap/api/a/a;

    invoke-interface {v0}, Lcom/amap/api/a/a;->v()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/ab;->a()Lcom/amap/api/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ab;->a()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/a;->l()V

    invoke-virtual {p0}, Lcom/amap/api/col/ab;->a()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/a;->s()V

    :cond_0
    return-void
.end method
