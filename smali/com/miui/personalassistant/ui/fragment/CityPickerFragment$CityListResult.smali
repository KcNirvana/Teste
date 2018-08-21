.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "CityPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListResult"
.end annotation


# instance fields
.field cityEnglishNameAndIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cityNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hotCityEnglishNameAndIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hotCityNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;-><init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->hotCityEnglishNameAndIdList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->hotCityEnglishNameAndIdList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->hotCityNameList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->hotCityNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$CityListResult;->cityEnglishNameAndIdList:Ljava/util/ArrayList;

    return-object v0
.end method
