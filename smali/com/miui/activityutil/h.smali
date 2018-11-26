.class final Lcom/miui/activityutil/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/d;

.field private final synthetic b:Ljava/lang/StringBuilder;

.field private final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/d;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/h;->a:Lcom/miui/activityutil/d;

    iput-object p2, p0, Lcom/miui/activityutil/h;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/miui/activityutil/h;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/activityutil/h;->a:Lcom/miui/activityutil/d;

    iget-object v0, v0, Lcom/miui/activityutil/d;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/miui/activityutil/i;

    iget-object v2, p0, Lcom/miui/activityutil/h;->b:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/activityutil/h;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/miui/activityutil/i;-><init>(Lcom/miui/activityutil/h;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Landroid/telephony/TelephonyManager;)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
