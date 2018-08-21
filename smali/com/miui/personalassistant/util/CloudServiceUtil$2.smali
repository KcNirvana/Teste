.class final Lcom/miui/personalassistant/util/CloudServiceUtil$2;
.super Ljava/lang/Object;
.source "CloudServiceUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/CloudServiceUtil;->filterFunLaunch(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/personalassistant/model/FunctionLaunch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cloudFunctionList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/CloudServiceUtil$2;->val$cloudFunctionList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/model/FunctionLaunch;)I
    .locals 3

    iget-object v2, p0, Lcom/miui/personalassistant/util/CloudServiceUtil$2;->val$cloudFunctionList:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/miui/personalassistant/util/CloudServiceUtil;->access$000(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/personalassistant/util/CloudServiceUtil$2;->val$cloudFunctionList:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lcom/miui/personalassistant/util/CloudServiceUtil;->access$000(Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v1

    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/model/FunctionLaunch;

    check-cast p2, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/util/CloudServiceUtil$2;->compare(Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    return v0
.end method
