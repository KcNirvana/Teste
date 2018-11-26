.class public abstract Lcom/miui/antivirus/model/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private children:Ljava/util/List;

.field private mNoStateSize:J

.field private mSize:J

.field private mState:Lcom/miui/antivirus/ui/StateButton$State;

.field private parent:Lcom/miui/antivirus/model/f;

.field private root:Lcom/miui/antivirus/model/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/antivirus/ui/StateButton$State;->apx:Lcom/miui/antivirus/ui/StateButton$State;

    iput-object v0, p0, Lcom/miui/antivirus/model/f;->mState:Lcom/miui/antivirus/ui/StateButton$State;

    return-void
.end method
