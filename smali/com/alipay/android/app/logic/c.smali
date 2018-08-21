.class public Lcom/alipay/android/app/logic/c;
.super Ljava/lang/Object;
.source "TradeLogicManager.java"


# static fields
.field private static b:Lcom/alipay/android/app/logic/c;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/logic/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/logic/c;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/logic/c;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/logic/c;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/logic/c;->b:Lcom/alipay/android/app/logic/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/logic/c;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/c;-><init>()V

    sput-object v0, Lcom/alipay/android/app/logic/c;->b:Lcom/alipay/android/app/logic/c;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/logic/c;->b:Lcom/alipay/android/app/logic/c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a(ILcom/alipay/android/app/logic/b;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)Lcom/alipay/android/app/logic/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/logic/b;

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
