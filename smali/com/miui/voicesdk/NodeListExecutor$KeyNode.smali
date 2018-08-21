.class public Lcom/miui/voicesdk/NodeListExecutor$KeyNode;
.super Ljava/lang/Object;
.source "NodeListExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/NodeListExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyNode"
.end annotation


# instance fields
.field str:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->x:I

    iput p2, p0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->y:I

    iput-object p3, p0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->str:Ljava/lang/String;

    return-void
.end method
