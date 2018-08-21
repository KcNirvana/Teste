.class Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$2;
.super Ljava/lang/Object;
.source "LaunchGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->setData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$2;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$2;->this$0:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
