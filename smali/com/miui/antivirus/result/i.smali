.class public Lcom/miui/antivirus/result/i;
.super Landroid/widget/ArrayAdapter;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final amJ:Ljava/util/HashMap;

.field private static final synthetic amM:[I

.field private static final synthetic amN:[I


# instance fields
.field private amK:Lcom/miui/common/d/f;

.field private amL:Landroid/content/res/Resources;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030185

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030184

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030181

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03016f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030171

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030173

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030177

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030183

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03015b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03015a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030159

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030146

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030144

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03017b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/common/d/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/i;->amL:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/i;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antivirus/result/i;->amK:Lcom/miui/common/d/f;

    return-void
.end method

.method private static synthetic atP()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/result/i;->amM:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/result/i;->amM:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->values()[Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ame:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->amf:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/antivirus/result/i;->amM:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic atQ()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/result/i;->amN:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/result/i;->amN:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/model/AppModel$CardType;->values()[Lcom/miui/antivirus/model/AppModel$CardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alb:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alc:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ale:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alf:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alg:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/antivirus/result/i;->amN:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public atN()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/a/a;

    iget-object v1, p0, Lcom/miui/antivirus/result/i;->amL:Landroid/content/res/Resources;

    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/antivirus/a/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public atO()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/a/a;

    iget-object v1, p0, Lcom/miui/antivirus/result/i;->amL:Landroid/content/res/Resources;

    const v2, 0x7f02030b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/antivirus/a/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v3, -0x1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/i;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    invoke-static {}, Lcom/miui/antivirus/result/i;->atP()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/a;->arO()Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-static {}, Lcom/miui/antivirus/result/i;->atQ()[I

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->aqM()Lcom/miui/antivirus/model/AppModel$CardType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    :cond_1
    :pswitch_1
    sget-object v1, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_2
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_3
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_4
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_5
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_6
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03015b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_7
    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f03015a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_8
    move-object v1, v0

    check-cast v1, Lcom/miui/antivirus/model/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/b;->aqO()Lcom/miui/antivirus/model/AppModel$SafeGroup;

    move-result-object v1

    sget-object v2, Lcom/miui/antivirus/model/AppModel$SafeGroup;->alq:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    const v1, 0x7f030157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0a0038

    const/4 v7, 0x0

    const v6, 0x7f0a0185

    const v5, 0x7f0a017a

    const v4, 0x7f0a00b0

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    invoke-static {}, Lcom/miui/antivirus/result/i;->atP()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/a;->arO()Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, p2

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    check-cast v0, Lcom/miui/antivirus/model/b;

    if-nez p2, :cond_c

    iget-object v1, p0, Lcom/miui/antivirus/result/i;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/miui/antivirus/result/i;->atQ()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqM()Lcom/miui/antivirus/model/AppModel$CardType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/antivirus/model/AppModel$CardType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object v2, v1

    check-cast v2, Lcom/miui/antivirus/ui/AppResultView;

    iget-object v3, p0, Lcom/miui/antivirus/result/i;->amK:Lcom/miui/common/d/f;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/ui/AppResultView;->awz(Lcom/miui/common/d/f;)V

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/ui/AppResultView;->avg(Lcom/miui/antivirus/model/b;)V

    const v2, 0x7f0a0390

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arC()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arD()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const v4, 0x7f0202fe

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqO()Lcom/miui/antivirus/model/AppModel$SafeGroup;

    move-result-object v0

    sget-object v2, Lcom/miui/antivirus/model/AppModel$SafeGroup;->alq:Lcom/miui/antivirus/model/AppModel$SafeGroup;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/miui/antivirus/ui/MonitorSafeResultView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->avf()V

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0a00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0389

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqQ()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0202c7

    invoke-virtual {v2, v7, v7, v4, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_2
    iget-object v2, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    const v4, 0x7f070551

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v0, -0x10000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    const v4, 0x7f070554

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->aqN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object v2, v1

    check-cast v2, Lcom/miui/antivirus/ui/ButtonResultView;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/ui/ButtonResultView;->awt(Lcom/miui/antivirus/model/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/i;->amK:Lcom/miui/common/d/f;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/ui/ButtonResultView;->awz(Lcom/miui/common/d/f;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v2, v1

    check-cast v2, Lcom/miui/antivirus/ui/WifiResultView;

    iget-object v3, p0, Lcom/miui/antivirus/result/i;->amK:Lcom/miui/common/d/f;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/ui/WifiResultView;->awz(Lcom/miui/common/d/f;)V

    check-cast v0, Lcom/miui/antivirus/model/d;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/ui/WifiResultView;->awj(Lcom/miui/antivirus/model/d;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arC()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arD()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v4, 0x7f0202fd

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arC()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->arD()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v4, 0x7f020318

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :pswitch_7
    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->getLayoutId()I

    move-result v2

    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    packed-switch v2, :pswitch_data_2

    :cond_6
    :goto_3
    :pswitch_8
    packed-switch v2, :pswitch_data_3

    :goto_4
    :pswitch_9
    const v1, 0x7f0a0016

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a0390

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00eb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aua()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aub()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/miui/common/b/e;->aHF(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0202ff

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aub()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/miui/antivirus/result/BaseModel;->asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V

    move-object v1, p2

    goto/16 :goto_0

    :pswitch_a
    new-instance v3, Lcom/miui/antivirus/result/j;

    invoke-direct {v3}, Lcom/miui/antivirus/result/j;-><init>()V

    const v1, 0x7f0a0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->amP:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->amQ:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_b
    new-instance v3, Lcom/miui/antivirus/result/j;

    invoke-direct {v3}, Lcom/miui/antivirus/result/j;-><init>()V

    const v1, 0x7f0a0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->amP:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->amQ:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/j;->amO:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/j;->amO:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_c
    new-instance v3, Lcom/miui/antivirus/result/k;

    invoke-direct {v3}, Lcom/miui/antivirus/result/k;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a018e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->amS:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->amR:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    new-instance v3, Lcom/miui/antivirus/result/l;

    invoke-direct {v3}, Lcom/miui/antivirus/result/l;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amU:Landroid/widget/TextView;

    const v1, 0x7f0a03d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amV:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amX:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_e
    new-instance v3, Lcom/miui/antivirus/result/m;

    invoke-direct {v3}, Lcom/miui/antivirus/result/m;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a018d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->amZ:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->amY:Landroid/widget/TextView;

    const v1, 0x7f0a0187

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->ana:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->anb:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/m;->anb:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/m;->anc:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/m;->anc:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_f
    new-instance v3, Lcom/miui/antivirus/result/n;

    invoke-direct {v3}, Lcom/miui/antivirus/result/n;-><init>()V

    const v1, 0x7f0a0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/n;->ane:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/n;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/n;->and:Landroid/widget/TextView;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/n;->anf:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/n;->anf:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_10
    new-instance v3, Lcom/miui/antivirus/result/k;

    invoke-direct {v3}, Lcom/miui/antivirus/result/k;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->amR:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_11
    new-instance v3, Lcom/miui/antivirus/result/l;

    invoke-direct {v3}, Lcom/miui/antivirus/result/l;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amU:Landroid/widget/TextView;

    const v1, 0x7f0a03d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amV:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amX:Landroid/widget/TextView;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/l;->amW:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/l;->amW:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_12
    new-instance v3, Lcom/miui/antivirus/result/p;

    invoke-direct {v3}, Lcom/miui/antivirus/result/p;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->ank:Landroid/widget/TextView;

    const v1, 0x7f0a03d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anm:Landroid/widget/TextView;

    const v1, 0x7f0a018b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->ann:Landroid/widget/TextView;

    const v1, 0x7f0a0188

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anh:Landroid/widget/ImageView;

    const v1, 0x7f0a0189

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->ani:Landroid/widget/ImageView;

    const v1, 0x7f0a018a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anj:Landroid/widget/ImageView;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anl:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/p;->anl:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_13
    new-instance v3, Lcom/miui/antivirus/result/p;

    invoke-direct {v3}, Lcom/miui/antivirus/result/p;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->title:Landroid/widget/TextView;

    const v1, 0x7f0a03d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anm:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->ang:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/p;->ang:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0188

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anh:Landroid/widget/ImageView;

    const v1, 0x7f0a0189

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->ani:Landroid/widget/ImageView;

    const v1, 0x7f0a018a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anj:Landroid/widget/ImageView;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/p;->anl:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/p;->anl:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_14
    new-instance v3, Lcom/miui/antivirus/result/q;

    invoke-direct {v3}, Lcom/miui/antivirus/result/q;-><init>()V

    const v1, 0x7f0a03d5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anr:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->anr:Landroid/view/View;

    const v4, 0x7f0a03d3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anu:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->anr:Landroid/view/View;

    const v4, 0x7f0a03d2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->ano:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->anr:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03d6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->ans:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ans:Landroid/view/View;

    const v4, 0x7f0a03d3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anv:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ans:Landroid/view/View;

    const v4, 0x7f0a03d2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anp:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ans:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03d7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->ant:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ant:Landroid/view/View;

    const v4, 0x7f0a03d3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anw:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ant:Landroid/view/View;

    const v4, 0x7f0a03d2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/q;->anq:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/miui/antivirus/result/q;->ant:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_15
    new-instance v3, Lcom/miui/antivirus/result/r;

    invoke-direct {v3}, Lcom/miui/antivirus/result/r;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/r;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/r;->anx:Landroid/widget/Button;

    iget-object v4, v3, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    const v1, 0x7f0a016b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v4, v7

    iget-object v4, v3, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    const v1, 0x7f0a038a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    iget-object v4, v3, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    const v1, 0x7f0a038b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    iget-object v4, v3, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    const v1, 0x7f0a038c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x3

    aput-object v1, v4, v5

    iget-object v1, v3, Lcom/miui/antivirus/result/r;->anx:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_16
    new-instance v3, Lcom/miui/antivirus/result/s;

    invoke-direct {v3}, Lcom/miui/antivirus/result/s;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/s;->anC:Landroid/widget/TextView;

    const v1, 0x7f0a027f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v3, Lcom/miui/antivirus/result/s;->anB:Landroid/view/ViewGroup;

    const v1, 0x7f0a007e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/s;->line:Landroid/view/View;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/s;->anA:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/s;->anA:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_17
    new-instance v3, Lcom/miui/antivirus/result/t;

    invoke-direct {v3}, Lcom/miui/antivirus/result/t;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/t;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/t;->amR:Landroid/widget/TextView;

    const v1, 0x7f0a0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/t;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/t;->amT:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/t;->amT:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_18
    new-instance v3, Lcom/miui/antivirus/result/u;

    invoke-direct {v3}, Lcom/miui/antivirus/result/u;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/u;->anD:Landroid/widget/TextView;

    const v1, 0x7f0a03d9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/u;->anE:Landroid/widget/TextView;

    const v1, 0x7f0a0136

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/u;->line:Landroid/view/View;

    const v1, 0x7f0a03da

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/u;->anF:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_19
    new-instance v3, Lcom/miui/antivirus/result/v;

    invoke-direct {v3}, Lcom/miui/antivirus/result/v;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/v;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1a
    new-instance v3, Lcom/miui/antivirus/result/w;

    invoke-direct {v3}, Lcom/miui/antivirus/result/w;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/w;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/w;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_1b
    new-instance v3, Lcom/miui/antivirus/result/x;

    invoke-direct {v3}, Lcom/miui/antivirus/result/x;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/x;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/x;->title:Landroid/widget/TextView;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/miui/antivirus/result/x;->anG:Landroid/view/View;

    iget-object v1, v3, Lcom/miui/antivirus/result/x;->anG:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1c
    new-instance v3, Lcom/miui/antivirus/result/y;

    invoke-direct {v3}, Lcom/miui/antivirus/result/y;-><init>()V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->title:Landroid/widget/TextView;

    const v1, 0x7f0a018e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->amS:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->amR:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->amT:Landroid/widget/Button;

    iget-object v1, v3, Lcom/miui/antivirus/result/y;->amT:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/antivirus/result/y;->anH:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/miui/antivirus/result/y;->anH:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_1d
    invoke-static {p2, v0}, Lcom/miui/antivirus/result/g;->atu(Landroid/view/View;Lcom/miui/antivirus/result/BaseModel;)Lcom/miui/b/a;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v3, v1, Lcom/miui/b/a;->initialized:Z

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/j;

    iget-object v1, v1, Lcom/miui/antivirus/result/j;->amO:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/k;

    iget-object v1, v1, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/m;

    iget-object v2, v1, Lcom/miui/antivirus/result/m;->anb:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/m;->anc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_21
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/n;

    iget-object v1, v1, Lcom/miui/antivirus/result/n;->anf:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/k;

    iget-object v1, v1, Lcom/miui/antivirus/result/k;->amT:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/l;

    iget-object v1, v1, Lcom/miui/antivirus/result/l;->amW:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_24
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/p;

    iget-object v1, v1, Lcom/miui/antivirus/result/p;->anl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/o;

    iget-object v2, v1, Lcom/miui/antivirus/result/o;->ang:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/o;->anl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/q;

    iget-object v2, v1, Lcom/miui/antivirus/result/q;->anr:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/miui/antivirus/result/q;->ans:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/q;->ant:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/r;

    iget-object v1, v1, Lcom/miui/antivirus/result/r;->anx:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/s;

    iget-object v1, v1, Lcom/miui/antivirus/result/s;->anA:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_29
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/t;

    iget-object v1, v1, Lcom/miui/antivirus/result/t;->amT:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/x;

    iget-object v1, v1, Lcom/miui/antivirus/result/x;->anG:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/y;

    iget-object v2, v1, Lcom/miui/antivirus/result/y;->amT:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/antivirus/result/y;->anH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aua()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aub()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/miui/antivirus/result/i;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/miui/common/b/e;->aHF(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0202fe

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aua()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/miui/antivirus/result/BaseModel;->aub()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v3, v7, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0202fd

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v3, v7, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f020318

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_c
    move-object v1, p2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f030143
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_e
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_13
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_19
        :pswitch_16
        :pswitch_18
        :pswitch_8
        :pswitch_8
        :pswitch_17
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f030169
        :pswitch_20
        :pswitch_22
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_9
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_9
        :pswitch_9
        :pswitch_2a
        :pswitch_2b
        :pswitch_25
        :pswitch_9
        :pswitch_20
        :pswitch_21
        :pswitch_9
        :pswitch_28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_29
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/i;->amJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/antivirus/result/Line;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0a0016

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
