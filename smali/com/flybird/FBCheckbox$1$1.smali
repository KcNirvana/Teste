.class Lcom/flybird/FBCheckbox$1$1;
.super Ljava/lang/Object;
.source "FBCheckbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/flybird/FBCheckbox$1;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBCheckbox$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBCheckbox$1$1;->this$1:Lcom/flybird/FBCheckbox$1;

    iput-object p2, p0, Lcom/flybird/FBCheckbox$1$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBCheckbox$1$1;->this$1:Lcom/flybird/FBCheckbox$1;

    iget-object v0, v0, Lcom/flybird/FBCheckbox$1;->this$0:Lcom/flybird/FBCheckbox;

    iget-wide v0, v0, Lcom/flybird/FBCheckbox;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBCheckbox$1$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBView;->nativePlatformOnChange(JLjava/lang/String;)I

    return-void
.end method
