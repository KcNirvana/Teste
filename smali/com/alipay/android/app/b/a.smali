.class public Lcom/alipay/android/app/b/a;
.super Ljava/lang/Object;
.source "BaseMessageHandlerAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/android/app/b/a/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->c:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->g()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
