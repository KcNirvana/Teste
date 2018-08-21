.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->doLocationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getCurLocation(Landroid/content/Context;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CityPickerFragment"

    const-string/jumbo v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
