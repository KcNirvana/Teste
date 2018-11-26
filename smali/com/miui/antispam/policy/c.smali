.class public abstract Lcom/miui/antispam/policy/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

.field protected mPc:Lcom/miui/antispam/policy/e;

.field protected mPolicyDesc:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/e;Lcom/miui/antispam/policy/PolicyUtils/b;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/c;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/policy/c;->mPc:Lcom/miui/antispam/policy/e;

    iput-object p3, p0, Lcom/miui/antispam/policy/c;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    iput-object p4, p0, Lcom/miui/antispam/policy/c;->mPolicyDesc:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    return-void
.end method


# virtual methods
.method public abstract dbQuery(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
.end method

.method public abstract getType()I
.end method

.method public abstract handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
.end method
