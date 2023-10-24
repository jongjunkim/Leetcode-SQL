class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:

        row, col = len(board), len(board[0])

        hashrow = collections.defaultdict(set)
        hashcol = collections.defaultdict(set)
        hashmat = collections.defaultdict(set)

        for i in range(row):
            for j in range(col):
                if board[i][j] == '.':
                    continue                
                if (board[i][j] in hashrow[i] or
                 board[i][j] in hashcol[j] or board[i][j] in hashmat[i//3, j//3]):
                    return False
                
                hashrow[i].add(board[i][j])
                hashcol[j].add(board[i][j])
                hashmat[i//3, j//3].add(board[i][j])
        
        return True