.class Lcom/miui/voicesdk/ScreencapHelper$4;
.super Ljava/lang/Object;
.source "ScreencapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/ScreencapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/ScreencapHelper;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/ScreencapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ScreencapHelper$4;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper$4;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v3}, Lcom/miui/voicesdk/ScreencapHelper;->access$300(Lcom/miui/voicesdk/ScreencapHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/voicesdk/util/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/voicesdk/ScreencapHelper$4;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v4}, Lcom/miui/voicesdk/ScreencapHelper;->access$400(Lcom/miui/voicesdk/ScreencapHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    invoke-static {}, Lcom/miui/voicesdk/ScreencapHelper;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper$4;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    const-string/jumbo v4, ""

    invoke-static {v3, v1, v4}, Lcom/miui/voicesdk/ScreencapHelper;->access$600(Lcom/miui/voicesdk/ScreencapHelper;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "ScreencapHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRefreshRunnable exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
