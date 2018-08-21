.class final Lcom/miui/calendar/util/JumpUtils$4;
.super Ljava/lang/Object;
.source "JumpUtils.java"

# interfaces
.implements Lcom/miui/calendar/util/JumpUtils$OnCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/util/JumpUtils;->viewEditEventActivity(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/miui/calendar/util/JumpUtils$4;->val$flags:I

    iput-object p2, p0, Lcom/miui/calendar/util/JumpUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFinish(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/miui/calendar/util/JumpUtils$4;->val$flags:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/calendar/util/JumpUtils$4;->val$flags:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
