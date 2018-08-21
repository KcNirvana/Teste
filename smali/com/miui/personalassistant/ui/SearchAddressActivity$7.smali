.class Lcom/miui/personalassistant/ui/SearchAddressActivity$7;
.super Ljava/lang/Object;
.source "SearchAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;->doLocationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2400(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SearchAddressActivity"

    const-string/jumbo v2, "SearchLocationUtil.getCurLocation START"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$7;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$2200(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Lcom/miui/personalassistant/ui/SearchAddressActivity$AutoNaviCallBack;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getCurLocation(Landroid/content/Context;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SearchAddressActivity"

    const-string/jumbo v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
