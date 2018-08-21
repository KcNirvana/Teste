.class Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AgendaBookListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->reBindView()V

    return-void
.end method
