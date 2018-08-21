.class public Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "NoteboardCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static CARD_NAME:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "NoteboardCardView"


# instance fields
.field private mNoteStr:Ljava/lang/String;

.field private mNotesView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "noteboard"

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->CARD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->CARD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private updateEmptyUI()V
    .locals 2

    const-string/jumbo v0, "NoteboardCardView"

    const-string/jumbo v1, "updateEmptyUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateTextUI()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "NoteboardCardView"

    const-string/jumbo v1, "updateTextUI"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const v1, 0x1b0b007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNoteStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    return-object v0
.end method

.method public isItemContentEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->expandNoteBoardCardView(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_note"

    const-string/jumbo v2, "17"

    const-string/jumbo v3, "NoteboardCardView"

    const-string/jumbo v4, "note"

    const-string/jumbo v5, "0"

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->expandNoteBoardCardView(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_note"

    const-string/jumbo v2, "17"

    const-string/jumbo v3, "NoteboardCardView"

    const-string/jumbo v4, "note"

    const-string/jumbo v5, "0"

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090183 -> :sswitch_0
        0x1b0901ac -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x1b090184

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mTitleEmptyTip:Landroid/widget/TextView;

    const v1, 0x1b0b0087

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b0901ac

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNotesView:Landroid/widget/TextView;

    const v1, 0x1b0202ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202d6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0202d5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "NoteboardCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->CARD_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/NoteboardItem;->queryItem(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "NoteboardCardView"

    const-string/jumbo v2, "refreshView"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->updateEmptyUI()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "NoteboardCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshView data is not empty mNoteStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->mNoteStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->updateTextUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NoteboardCardView"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->updateEmptyUI()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeItemData(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
