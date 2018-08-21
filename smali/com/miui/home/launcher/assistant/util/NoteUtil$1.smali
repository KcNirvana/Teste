.class final Lcom/miui/home/launcher/assistant/util/NoteUtil$1;
.super Ljava/lang/Object;
.source "NoteUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/NoteUtil;->doSave(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;

.field final synthetic val$noteStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$noteStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$listener:Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "snippet"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$noteStr:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/Notes$Note;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "caller_is_plain_text"

    invoke-static {v4, v5}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->access$000(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/assistant/util/NoteUtil$1$1;-><init>(Lcom/miui/home/launcher/assistant/util/NoteUtil$1;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NoteUtil"

    const-string/jumbo v4, "doSave "

    invoke-static {v3, v4, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
