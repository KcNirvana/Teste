.class Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;
.super Landroid/os/AsyncTask;
.source "GlobalSearchableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CTATask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, p1, v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    move-object v6, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->doInBackground([Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$CTATask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
