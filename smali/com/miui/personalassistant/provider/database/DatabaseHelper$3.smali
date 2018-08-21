.class Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/provider/database/DatabaseHelper;->updateFunctionData3(Landroid/database/sqlite/SQLiteDatabase;)V
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
        "Lcom/miui/personalassistant/model/FunctionLaunch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

.field final synthetic val$selectedFunctionList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->this$0:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    iput-object p2, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->val$selectedFunctionList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/model/FunctionLaunch;)I
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->this$0:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    iget-object v3, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->val$selectedFunctionList:Ljava/util/ArrayList;

    invoke-static {v2, v3, p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->access$000(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->this$0:Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    iget-object v3, p0, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->val$selectedFunctionList:Ljava/util/ArrayList;

    invoke-static {v2, v3, p2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->access$000(Lcom/miui/personalassistant/provider/database/DatabaseHelper;Ljava/util/ArrayList;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v1

    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/model/FunctionLaunch;

    check-cast p2, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper$3;->compare(Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/model/FunctionLaunch;)I

    move-result v0

    return v0
.end method
