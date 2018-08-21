.class Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;
.super Ljava/lang/Object;
.source "AgendaAssistantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x1b0900ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$EntryHolder;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method
