.class final Lcom/miui/activityutil/i;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic a:Lcom/miui/activityutil/h;

.field private final synthetic b:Ljava/lang/StringBuilder;

.field private final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic d:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/h;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/i;->a:Lcom/miui/activityutil/h;

    iput-object p2, p0, Lcom/miui/activityutil/i;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/miui/activityutil/i;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/miui/activityutil/i;->d:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string/jumbo v2, "getDbm"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/miui/activityutil/i;->b:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/miui/activityutil/i;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/miui/activityutil/i;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/activityutil/i;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
