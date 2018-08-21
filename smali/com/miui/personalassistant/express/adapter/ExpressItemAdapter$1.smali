.class Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;
.super Ljava/lang/Object;
.source "ExpressItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->onBindViewHolder(Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

.field final synthetic val$holder:Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    iput-object p2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;->val$holder:Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;->val$holder:Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    invoke-static {v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->access$000(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
