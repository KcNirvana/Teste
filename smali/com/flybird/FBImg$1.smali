.class Lcom/flybird/FBImg$1;
.super Ljava/lang/Object;
.source "FBImg.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBImg;


# direct methods
.method constructor <init>(Lcom/flybird/FBImg;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBImg$1;->this$0:Lcom/flybird/FBImg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBImg$1;->this$0:Lcom/flybird/FBImg;

    invoke-static {v0}, Lcom/flybird/FBImg;->access$000(Lcom/flybird/FBImg;)V

    return-void
.end method
