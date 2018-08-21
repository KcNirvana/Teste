.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListLoaderCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    return-void
.end method

.method private extractNameListsFrom(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_0

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "locName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "locEngName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "locShortName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "locId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct/range {v1 .. v7}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityInfo;->getCompoundName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    new-instance v1, Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2500(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/personalassistant/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2402(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2600(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/request/core/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2400(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/loader/BaseLoader;

    move-result-object v0

    return-object v0
.end method

.method public onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;)V

    return-object v0
.end method

.method public onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$3000(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ")V"
        }
    .end annotation

    move-object v1, p2

    check-cast v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "picker_index_target"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "picker_presentation"

    iget-object v3, v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "picker_backend_data"

    iget-object v3, v1, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2702(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Z)Z

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$2800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->setupPickerUi(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    iput-object v1, v2, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->mCityListResult:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->onLoadFinished(Landroid/content/Loader;Lcom/miui/personalassistant/request/core/BaseResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onParseResult(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v4, p3

    check-cast v4, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "cityList"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "cityList"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListLoaderCallBack;->extractNameListsFrom(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v3, v4, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    iput-object v0, v4, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    :cond_0
    return-object v4
.end method
