.class Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "SearchAddressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentCodeResult"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field cityCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;Lcom/miui/personalassistant/ui/SearchAddressActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    return-void
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->city:Ljava/lang/String;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->cityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;-><init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->city:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->cityCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/SearchAddressActivity$CurrentCodeResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method
