.class Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;
.super Ljava/lang/Object;
.source "ExpressDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->migrateExpressData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;->this$0:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;->this$0:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    iget-object v1, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;->this$0:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-static {v1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->access$000(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->access$100(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper$1;->this$0:Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    invoke-static {v0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->access$200(Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;)V

    return-void
.end method
