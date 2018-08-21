.class Lcom/miui/personalassistant/ui/CardSettingsActivity$3;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;->sortListData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/personalassistant/model/SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

.field final synthetic val$keyList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;->val$keyList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/personalassistant/model/SettingItem;Lcom/miui/personalassistant/model/SettingItem;)I
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;->val$keyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;->val$keyList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    sub-int v1, v0, v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/personalassistant/model/SettingItem;->getId()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/model/SettingItem;

    check-cast p2, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/CardSettingsActivity$3;->compare(Lcom/miui/personalassistant/model/SettingItem;Lcom/miui/personalassistant/model/SettingItem;)I

    move-result v0

    return v0
.end method
