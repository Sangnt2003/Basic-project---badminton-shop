using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SH_SHOP.Migrations
{
    /// <inheritdoc />
    public partial class EvaluateUpdate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Evaluates_AspNetUsers_UserId",
                table: "Evaluates");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "Evaluates",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Evaluates_AspNetUsers_UserId",
                table: "Evaluates",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Evaluates_AspNetUsers_UserId",
                table: "Evaluates");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "Evaluates",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddForeignKey(
                name: "FK_Evaluates_AspNetUsers_UserId",
                table: "Evaluates",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
