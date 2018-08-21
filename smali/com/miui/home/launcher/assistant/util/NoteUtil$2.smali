.class final Lcom/miui/home/launcher/assistant/util/NoteUtil$2;
.super Ljava/lang/Object;
.source "NoteUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/NoteUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
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
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$noteStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$listener:Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$noteStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$listener:Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->access$100(Landroid/content/Context;Ljava/lang/String;Lcom/miui/home/launcher/assistant/util/NoteUtil$OnSavedListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NoteUtil$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->setDialogDisplayStatus(Landroid/content/Context;Z)V

    return-void
.end method
