.class Lcom/alipay/android/app/LiveConnectReceiver$a;
.super Landroid/os/AsyncTask;
.source "LiveConnectReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/LiveConnectReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/LiveConnectReceiver;


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/LiveConnectReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/LiveConnectReceiver$a;->a:Lcom/alipay/android/app/LiveConnectReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/app/LiveConnectReceiver;Lcom/alipay/android/app/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/LiveConnectReceiver$a;-><init>(Lcom/alipay/android/app/LiveConnectReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/LiveConnectReceiver$a;->a:Lcom/alipay/android/app/LiveConnectReceiver;

    invoke-static {v0}, Lcom/alipay/android/app/LiveConnectReceiver;->access$100(Lcom/alipay/android/app/LiveConnectReceiver;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/LiveConnectReceiver$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
