.class public Lcom/miui/home/launcher/assistant/util/NoteUtil;
.super Ljava/lang/Object;
.source "NoteUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;
    }
.end annotation


# static fields
.field public static final CALLER_IS_PLAIN_TEXT:Ljava/lang/String; = "caller_is_plain_text"

.field public static final KEY_EXPAND_NOTE_SHOW_DIALOG:Ljava/lang/String; = "key_expand_note_dialog_display"

.field public static final TAG:Ljava/lang/String; = "NoteUtil"

.field private static sDialog:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->appendFlag(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->doSave(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    return-void
.end method

.method private static appendFlag(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private static doSave(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/miui/home/launcher/assistant/util/NoteUtil$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDialogDisplayStatus(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_expand_note_dialog_display"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveTextToNotes(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->getDialogDisplayStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->doSave(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    goto :goto_0
.end method

.method public static setDialogDisplayStatus(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_expand_note_dialog_display"

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/assistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 5

    :try_start_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x1b0b0079

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b0078

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1b0b0077

    new-instance v4, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    sget-object v2, Lcom/miui/home/launcher/assistant/util/NoteUtil;->sDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "NoteUtil"

    const-string/jumbo v3, "showDialog "

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
